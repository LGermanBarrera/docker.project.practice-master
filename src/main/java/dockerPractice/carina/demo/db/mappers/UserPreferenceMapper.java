package dockerPractice.carina.demo.db.mappers;

import dockerPractice.carina.demo.db.models.UserPreference;

public interface UserPreferenceMapper {

	void create(UserPreference userPreference);

	UserPreference findById(Long id);
}
